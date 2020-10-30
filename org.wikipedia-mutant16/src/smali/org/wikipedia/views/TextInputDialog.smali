.class public final Lorg/wikipedia/views/TextInputDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;,
        Lorg/wikipedia/views/TextInputDialog$DefaultCallback;,
        Lorg/wikipedia/views/TextInputDialog$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/views/TextInputDialog$Callback;

.field private editText:Landroid/widget/EditText;

.field private editTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private secondaryText:Landroid/widget/EditText;

.field private secondaryTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private watcher:Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;-><init>(Lorg/wikipedia/views/TextInputDialog;Lorg/wikipedia/views/TextInputDialog$1;)V

    iput-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->watcher:Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10043e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$uJflL2QFYQJsZVt5qxBPo1heHcg;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$uJflL2QFYQJsZVt5qxBPo1heHcg;-><init>(Lorg/wikipedia/views/TextInputDialog;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10043d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$jPGKDWZQeMZAiDMInll9o0a3DYU;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$jPGKDWZQeMZAiDMInll9o0a3DYU;-><init>(Lorg/wikipedia/views/TextInputDialog;)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    new-instance p1, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$gBAW39W2SDheGobBKLU66pOH7rY;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/-$$Lambda$TextInputDialog$gBAW39W2SDheGobBKLU66pOH7rY;-><init>(Lorg/wikipedia/views/TextInputDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/views/TextInputDialog;)Lorg/wikipedia/views/TextInputDialog$Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Lorg/wikipedia/views/TextInputDialog$Callback;

    return-object p0
.end method

.method public static newInstance(Landroid/app/Activity;ZLorg/wikipedia/views/TextInputDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;
    .locals 2

    .line 42
    new-instance v0, Lorg/wikipedia/views/TextInputDialog;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/TextInputDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0c0045

    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/views/TextInputDialog;->setView(Landroid/view/LayoutInflater;I)Lorg/wikipedia/views/TextInputDialog;

    move-result-object p0

    .line 44
    invoke-direct {p0, p1}, Lorg/wikipedia/views/TextInputDialog;->showSecondaryText(Z)Lorg/wikipedia/views/TextInputDialog;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p2}, Lorg/wikipedia/views/TextInputDialog;->setCallback(Lorg/wikipedia/views/TextInputDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    move-result-object p0

    return-object p0
.end method

.method private showSecondaryText(Z)Lorg/wikipedia/views/TextInputDialog;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$new$0$TextInputDialog(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 131
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Lorg/wikipedia/views/TextInputDialog$Callback;

    if-eqz p1, :cond_0

    .line 132
    iget-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/wikipedia/views/TextInputDialog$Callback;->onSuccess(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$TextInputDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Lorg/wikipedia/views/TextInputDialog$Callback;

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Lorg/wikipedia/views/TextInputDialog$Callback;->onCancel()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$TextInputDialog(Landroid/content/DialogInterface;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 147
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Lorg/wikipedia/views/TextInputDialog$Callback;

    if-eqz p1, :cond_1

    .line 148
    invoke-interface {p1, p0}, Lorg/wikipedia/views/TextInputDialog$Callback;->onShow(Lorg/wikipedia/views/TextInputDialog;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 100
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/wikipedia/views/TextInputDialog;->watcher:Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 105
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/wikipedia/views/TextInputDialog;->watcher:Lorg/wikipedia/views/TextInputDialog$TextInputWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public selectAll()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/views/TextInputDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Lorg/wikipedia/views/TextInputDialog$Callback;

    return-object p0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 1

    const/4 v0, -0x1

    .line 95
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setSecondaryHint(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/LayoutInflater;I)Lorg/wikipedia/views/TextInputDialog;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903f7

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->editText:Landroid/widget/EditText;

    const p2, 0x7f0903f8

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->editTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f090384

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryText:Landroid/widget/EditText;

    const p2, 0x7f090385

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lorg/wikipedia/views/TextInputDialog;->secondaryTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->editTextContainer:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-object p0
.end method
