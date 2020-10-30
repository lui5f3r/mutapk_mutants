.class final Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;
.super Ljava/lang/Object;
.source "ReadingListTitleDialog.java"

# interfaces
.implements Lorg/wikipedia/views/TextInputDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListTitleDialog;->readingListTitleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$otherTitles:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$otherTitles:Ljava/util/List;

    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$callback:Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onShow(Lorg/wikipedia/views/TextInputDialog;)V
    .locals 1

    const v0, 0x7f100335

    .line 29
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/TextInputDialog;->setHint(I)V

    const v0, 0x7f100327

    .line 30
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/TextInputDialog;->setSecondaryHint(I)V

    .line 31
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/TextInputDialog;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$description:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/views/TextInputDialog;->setSecondaryText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$callback:Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Lorg/wikipedia/views/TextInputDialog;)V
    .locals 4

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p2, v1}, Lorg/wikipedia/views/TextInputDialog;->setError(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p2, v2}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled(Z)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListTitleDialog$1;->val$otherTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100353

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/wikipedia/views/TextInputDialog;->setError(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p2, v2}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled(Z)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2, v1}, Lorg/wikipedia/views/TextInputDialog;->setError(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p2, v3}, Lorg/wikipedia/views/TextInputDialog;->setPositiveButtonEnabled(Z)V

    :goto_0
    return-void
.end method
