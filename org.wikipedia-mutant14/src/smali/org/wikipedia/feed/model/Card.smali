.class public abstract Lorg/wikipedia/feed/model/Card;
.super Lorg/wikipedia/model/BaseModel;
.source "Card.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismissHashCode()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/model/BaseModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public extract()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHideKey()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/Card;->type()Lorg/wikipedia/feed/model/CardType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/feed/model/CardType;->code()I

    move-result v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/Card;->dismissHashCode()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onRestore()V
    .locals 0

    return-void
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract type()Lorg/wikipedia/feed/model/CardType;
.end method
