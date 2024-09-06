import { Link } from "react-router-dom";
import { MdOutlineStorefront } from "react-icons/md";

export default function logo() {
    return (
        <Link to="/" aria-labelledby="logo">
            <MdOutlineStorefront size={64} />
        </Link>
    );
}
