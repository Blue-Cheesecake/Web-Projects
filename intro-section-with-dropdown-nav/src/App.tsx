import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";

// Pages
import { Home } from "./pages/home.page";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
