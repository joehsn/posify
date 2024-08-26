import React from 'react'
import { createRoot } from 'react-dom/client';

// Clear the existing HTML content
//
// // Render your React component instead
const root = createRoot(document.querySelector("#root"));
root.render(
  <React.StrictMode>
    <h1>
      Hello, world!
    </h1>
  </React.StrictMode>
);

