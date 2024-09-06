import {
    Card,
    CardContent,
    CardFooter,
    CardHeader,
    CardTitle,
} from "../components/shadcn/card";
import Logo from "../components/logo";
import { Button, buttonVariants } from "../components/shadcn/button";
import { Input } from "../components/shadcn/input";
import { Label } from "../components/shadcn/label";
import { Link } from "react-router-dom";
import clsx from "clsx";

export default function Login() {
    const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
        e.preventDefault();
        // Here we're handle the data
    };
    return (
        <div className="container min-h-screen flex items-center justify-center">
            <Card className="w-[350px]">
                <CardHeader className="flex justify-center items-center gap-4 mb-4">
                    <Logo />
                    <CardTitle className="text-2xl font-bold">
                        Login to POSify
                    </CardTitle>
                </CardHeader>
                <form onSubmit={handleSubmit}>
                    <CardContent>
                        <div className="grid w-full items-center gap-4">
                            <div>
                                <Label htmlFor="username" className="sr-only">
                                    Email
                                </Label>
                                <Input
                                    id="email"
                                    placeholder="Email"
                                    type="email"
                                    className="focus:placeholder-transparent"
                                />
                            </div>
                            <div>
                                <Label htmlFor="password" className="sr-only">
                                    Password
                                </Label>
                                <Input
                                    id="password"
                                    placeholder="Password"
                                    type="password"
                                    className="focus:placeholder-transparent"
                                />
                                {/*
                                    TODO: Create an indicator for wiether `CAPSLOOK` button is on.
                                */}
                            </div>
                        </div>
                    </CardContent>
                    <CardFooter className="flex gap-4 flex-col w-full">
                        <Button className="w-full" type="submit">
                            Login
                        </Button>
                        <Link
                            to="/forgot-password"
                            className={clsx(
                                buttonVariants({ variant: "ghost" }),
                                "w-full"
                            )}
                        >
                            Forgot Password?
                        </Link>
                    </CardFooter>
                </form>
            </Card>
        </div>
    );
}
