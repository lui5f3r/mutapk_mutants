.class Lorg/wikipedia/views/NonEmptyValidator$1;
.super Ljava/lang/Object;
.source "NonEmptyValidator.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/NonEmptyValidator;-><init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/NonEmptyValidator;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/NonEmptyValidator;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/wikipedia/views/NonEmptyValidator$1;->this$0:Lorg/wikipedia/views/NonEmptyValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lorg/wikipedia/views/NonEmptyValidator$1;->this$0:Lorg/wikipedia/views/NonEmptyValidator;

    invoke-static {p1}, Lorg/wikipedia/views/NonEmptyValidator;->access$000(Lorg/wikipedia/views/NonEmptyValidator;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
