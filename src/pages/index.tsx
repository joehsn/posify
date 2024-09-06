import "@fontsource-variable/raleway";
import React from "react";
import { createRoot } from "react-dom/client";
import { RouterProvider } from "react-router-dom";
import router from "../lib/router";

// Render your React component instead
const root = createRoot(document.querySelector("#root"));
root.render(
    <React.StrictMode>
        <RouterProvider router={router} />
    </React.StrictMode>
);
