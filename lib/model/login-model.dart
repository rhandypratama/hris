class LoginModel {
    LoginModel({
        this.code,
        this.token,
    });

    int code;
    Token token;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        code: json["code"] == null ? null : json["code"],
        token: json["token"] == null ? null : Token.fromJson(json["token"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "token": token == null ? null : token.toJson(),
    };
}

class Token {
    Token({
        this.accessToken,
        this.tokenType,
        this.expiresIn,
    });

    String accessToken;
    String tokenType;
    int expiresIn;

    factory Token.fromJson(Map<String, dynamic> json) => Token(
        accessToken: json["access_token"] == null ? null : json["access_token"],
        tokenType: json["token_type"] == null ? null : json["token_type"],
        expiresIn: json["expires_in"] == null ? null : json["expires_in"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken == null ? null : accessToken,
        "token_type": tokenType == null ? null : tokenType,
        "expires_in": expiresIn == null ? null : expiresIn,
    };
}
