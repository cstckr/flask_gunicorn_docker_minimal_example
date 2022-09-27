from flask import Flask, render_template


def create_app():
    app = Flask(__name__)
    app.config["SECRET_KEY"] = "12345"

    @app.route("/", methods=["GET", "POST"])
    def main():
        return render_template("main.html")
    return app


app = create_app()
