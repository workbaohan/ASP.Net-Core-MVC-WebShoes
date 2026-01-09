using System.Net.Http.Headers;
using System.Text.Json;

namespace backend.Helpers
{
    public class ShopifyService
    {
        private readonly HttpClient _httpClient;
        private readonly IConfiguration _config;

        public ShopifyService(IConfiguration config)
        {
            _config = config;
            _httpClient = new HttpClient();
            _httpClient.DefaultRequestHeaders.Add("X-Shopify-Access-Token",
                _config["Shopify:AccessToken"]);
        }

        public async Task<List<ShopifyProduct>> GetProductsAsync()
        {
            string storeUrl = _config["Shopify:StoreUrl"];
            string endpoint = $"{storeUrl}/admin/api/2025-01/products.json";

            var response = await _httpClient.GetAsync(endpoint);
            response.EnsureSuccessStatusCode();

            var content = await response.Content.ReadAsStringAsync();

            var json = JsonDocument.Parse(content);
            var products = new List<ShopifyProduct>();

            foreach (var item in json.RootElement.GetProperty("products").EnumerateArray())
            {
                products.Add(new ShopifyProduct
                {
                    Id = item.GetProperty("id").GetInt64(),
                    Title = item.GetProperty("title").GetString(),
                    Price = item.GetProperty("variants")[0].GetProperty("price").GetString(),
                    Image = item.TryGetProperty("image", out var img)
                        ? img.GetProperty("src").GetString()
                        : null
                });
            }

            return products;
        }
    }

    public class ShopifyProduct
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string Price { get; set; }
        public string? Image { get; set; }
    }
}
