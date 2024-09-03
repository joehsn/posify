import { createBrowserRouter } from "react-router-dom";
import App from "../pages/app";
import Login from "../pages/login";
import Register from "../pages/register";
import Profile from "../pages/profile";
import Invoices from "../pages/invoices";

const router = createBrowserRouter([
    {
        path: "/",
        element: <App />,
    },
    {
        path: "/login",
        element: <Login />,
    },
    {
        path: "/register",
        element: <Register />,
    },
    {
        path: "/profile",
        element: <Profile />,
    },
    {
        path: "/invoices",
        element: <Invoices />,
    },
]);

export default router;
