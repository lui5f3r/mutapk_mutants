.class public Lorg/wikipedia/dataclient/mwapi/MwServiceError;
.super Lorg/wikipedia/model/BaseModel;
.source "MwServiceError.java"

# interfaces
.implements Lorg/wikipedia/dataclient/ServiceError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;,
        Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public badLoginState()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    const-string v1, "assertuserfailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public badToken()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    const-string v1, "badtoken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->access$000(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->access$000(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;

    .line 50
    invoke-static {v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->access$100(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->access$200(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->code:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageName(Ljava/lang/String;)Z
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->access$000(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->data:Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;->access$000(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;

    .line 39
    invoke-static {v1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;->access$100(Lorg/wikipedia/dataclient/mwapi/MwServiceError$Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
