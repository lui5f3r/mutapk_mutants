.class public Lorg/wikipedia/dataclient/restbase/RbServiceError;
.super Lorg/wikipedia/model/BaseModel;
.source "RbServiceError.java"

# interfaces
.implements Lorg/wikipedia/dataclient/ServiceError;


# instance fields
.field private detail:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/wikipedia/dataclient/restbase/RbServiceError;
    .locals 1

    .line 21
    const-class v0, Lorg/wikipedia/dataclient/restbase/RbServiceError;

    invoke-static {v0, p0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/dataclient/restbase/RbServiceError;

    return-object p0
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbServiceError;->detail:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/dataclient/restbase/RbServiceError;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
