.class public Lorg/wikipedia/login/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field private groups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final site:Lorg/wikipedia/dataclient/WikiSite;

.field private final status:Ljava/lang/String;

.field private userId:I

.field private final userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    .line 23
    iput-object p1, p0, Lorg/wikipedia/login/LoginResult;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 24
    iput-object p2, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lorg/wikipedia/login/LoginResult;->userName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lorg/wikipedia/login/LoginResult;->password:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fail()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    const-string v1, "FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->site:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/wikipedia/login/LoginResult;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public pass()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/wikipedia/login/LoginResult;->status:Ljava/lang/String;

    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGroups(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lorg/wikipedia/login/LoginResult;->groups:Ljava/util/Set;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/wikipedia/login/LoginResult;->userId:I

    return-void
.end method
