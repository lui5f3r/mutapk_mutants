.class Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/TextInputDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/views/TextInputDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;->this$0:Lorg/wikipedia/views/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/views/TextInputDialog;Lorg/wikipedia/views/TextInputDialog$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;-><init>(Lorg/wikipedia/views/TextInputDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 158
    iget-object p2, p0, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;->this$0:Lorg/wikipedia/views/TextInputDialog;

    invoke-static {p2}, Lorg/wikipedia/views/TextInputDialog;->access$100(Lorg/wikipedia/views/TextInputDialog;)Lorg/wikipedia/views/TextInputDialog$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 159
    iget-object p2, p0, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;->this$0:Lorg/wikipedia/views/TextInputDialog;

    invoke-static {p2}, Lorg/wikipedia/views/TextInputDialog;->access$100(Lorg/wikipedia/views/TextInputDialog;)Lorg/wikipedia/views/TextInputDialog$Callback;

    move-result-object p2

    iget-object p3, p0, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;->this$0:Lorg/wikipedia/views/TextInputDialog;

    invoke-interface {p2, p1, p3}, Lorg/wikipedia/views/TextInputDialog$Callback;->onTextChanged(Ljava/lang/CharSequence;Lorg/wikipedia/views/TextInputDialog;)V

    :cond_0
    return-void
.end method
