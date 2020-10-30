.class public interface abstract Lorg/wikipedia/views/TextInputDialog$Callback;
.super Ljava/lang/Object;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onShow(Lorg/wikipedia/views/TextInputDialog;)V
.end method

.method public abstract onSuccess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;Lorg/wikipedia/views/TextInputDialog;)V
.end method
