.class Lorg/wikipedia/login/LoginClient$LoginResponse$Request;
.super Ljava/lang/Object;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/LoginClient$LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/login/LoginClient$LoginResponse$RequestField;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private required:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method id()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/wikipedia/login/LoginClient$LoginResponse$Request;->id:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
