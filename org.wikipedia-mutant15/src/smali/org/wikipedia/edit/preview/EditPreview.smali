.class public Lorg/wikipedia/edit/preview/EditPreview;
.super Lorg/wikipedia/dataclient/mwapi/MwPostResponse;
.source "EditPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/preview/EditPreview$Parse;
    }
.end annotation


# instance fields
.field private parse:Lorg/wikipedia/edit/preview/EditPreview$Parse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;-><init>()V

    return-void
.end method


# virtual methods
.method hasPreviewResult()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreview;->parse:Lorg/wikipedia/edit/preview/EditPreview$Parse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method result()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreview;->parse:Lorg/wikipedia/edit/preview/EditPreview$Parse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreview$Parse;->text()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
