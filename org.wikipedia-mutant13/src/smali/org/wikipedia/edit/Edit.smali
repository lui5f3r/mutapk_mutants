.class public Lorg/wikipedia/edit/Edit;
.super Lorg/wikipedia/dataclient/mwapi/MwPostResponse;
.source "Edit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/Edit$Captcha;,
        Lorg/wikipedia/edit/Edit$Result;
    }
.end annotation


# instance fields
.field private edit:Lorg/wikipedia/edit/Edit$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwPostResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public edit()Lorg/wikipedia/edit/Edit$Result;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    return-object v0
.end method

.method hasEditResult()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
