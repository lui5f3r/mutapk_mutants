.class Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;
.super Ljava/lang/Object;
.source "MwQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokens"
.end annotation


# instance fields
.field private createAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createaccounttoken"
    .end annotation
.end field

.field private csrf:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "csrftoken"
    .end annotation
.end field

.field private login:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logintoken"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->csrf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->createAccount()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;)Ljava/lang/String;
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->login()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createAccount()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->createAccount:Ljava/lang/String;

    return-object v0
.end method

.method private csrf()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->csrf:Ljava/lang/String;

    return-object v0
.end method

.method private login()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->login:Ljava/lang/String;

    return-object v0
.end method
