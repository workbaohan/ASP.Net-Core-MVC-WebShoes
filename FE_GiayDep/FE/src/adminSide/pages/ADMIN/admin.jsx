import React from "react";
import { Table } from "antd";
import { useSelector, useDispatch } from "react-redux";
import Button from "@mui/material/Button";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { deleteInvoiceServices } from "../../../services/invoiceServices";
import { getAllInvoiceApi } from "../../../redux/slices/invoiceSlice";

export default function Invoice() {
    const navigate = useNavigate();
    const dispatch = useDispatch();
    const listInvoices = useSelector((state) => state.invoice.invoices);

    const onDelete = async (id) => {
        const result = await deleteInvoiceServices(id);
        if (result.status === 200) {
            toast.success("Xóa hóa đơn thành công!");
            await dispatch(getAllInvoiceApi());
            navigate("/admin/invoices");
        } else {
            toast.error("Xóa hóa đơn thất bại!");
        }
    };

    const columns = [
        {
            title: "ID",
            dataIndex: "id",
            key: "id",
        },
        {
            title: "Tên khách hàng",
            dataIndex: "customerName",
            key: "customerName",
        },
        {
            title: "Tổng tiền",
            dataIndex: "totalAmount",
            key: "totalAmount",
        },
        {
            title: "Ngày tạo",
            dataIndex: "createdAt",
            key: "createdAt",
        },
        {
            title: "Hành động",
            key: "action",
            render: (_, record) => (
                <>
                    <Button
                        variant="contained"
                        color="warning"
                        sx={{ marginLeft: "4px" }}
                        onClick={() => {
                            navigate(`/admin/invoice/edit/${record.id}`, {
                                state: record,
                            });
                        }}
                    >
                        Chỉnh sửa
                    </Button>
                    <Button
                        variant="contained"
                        color="error"
                        sx={{ marginLeft: "4px" }}
                        onClick={() => onDelete(record.id)}
                    >
                        Xóa
                    </Button>
                </>
            ),
        },
    ];

    const rows = listInvoices.length > 0 ? listInvoices : [];

    return (
        <>
            <div
                style={{
                    display: "flex",
                    justifyContent: "space-between",
                    margin: "50px",
                }}
            >
                <h1 className="admin-h1">Danh sách hóa đơn</h1>
                <Button
                    style={{
                        marginRight: "100px",
                        padding: "10px",
                    }}
                    color="success"
                    variant="contained"
                    onClick={() => {
                        navigate("/admin/invoice/add");
                    }}
                >
                    Thêm hóa đơn
                </Button>
            </div>
            <div style={{ height: "78vh", width: "100%", padding: "0px 20px" }}>
                <Table columns={columns} dataSource={rows} />
            </div>
        </>
    );
}
