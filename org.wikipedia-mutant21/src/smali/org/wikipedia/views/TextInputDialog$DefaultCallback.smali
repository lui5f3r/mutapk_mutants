.class public Lorg/wikipedia/views/TextInputDialog$DefaultCallback;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Lorg/wikipedia/views/TextInputDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onShow(Lorg/wikipedia/views/TextInputDialog;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Lorg/wikipedia/views/TextInputDialog;)V
    .locals 0

    return-void
.end method
