import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import "./css/App.css";
import Header from "./components/Header";
import Home from "./components/Home";
import Footer from "./components/Footer";
import Escocia from "./components/Escocia";
import Aruba from "./components/Aruba";
import Muralha from "./components/Muralha";
import Canyon from "./components/Canyon";

function App() {
  return (
    <main>
      <Router>
        <Header />
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/Escocia' element={<Escocia />} />
          <Route path='/Aruba' element={<Aruba />} />
          <Route path='/Muralha' element={<Muralha />} />
          <Route path='/Canyon' element={<Canyon />} />
        </Routes>
        <Footer />
      </Router>
    </main>
  );
}

export default App;
