.class public Lorg/wikipedia/views/NonEmptyValidator;
.super Ljava/lang/Object;
.source "NonEmptyValidator.java"


# instance fields
.field private final actionButton:Landroid/widget/Button;

.field private lastIsValidValue:Z

.field private final textInputs:[Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public varargs constructor <init>(Landroid/widget/Button;[Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/wikipedia/views/NonEmptyValidator;->lastIsValidValue:Z

    .line 19
    iput-object p2, p0, Lorg/wikipedia/views/NonEmptyValidator;->textInputs:[Lcom/google/android/material/textfield/TextInputLayout;

    .line 20
    iput-object p1, p0, Lorg/wikipedia/views/NonEmptyValidator;->actionButton:Landroid/widget/Button;

    .line 22
    new-instance p1, Lorg/wikipedia/views/NonEmptyValidator$1;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/NonEmptyValidator$1;-><init>(Lorg/wikipedia/views/NonEmptyValidator;)V

    .line 37
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 38
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/NonEmptyValidator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/wikipedia/views/NonEmptyValidator;->revalidate()V

    return-void
.end method

.method private revalidate()V
    .locals 7

    .line 47
    iget-object v0, p0, Lorg/wikipedia/views/NonEmptyValidator;->textInputs:[Lcom/google/android/material/textfield/TextInputLayout;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v6, v0, v4

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-boolean v0, p0, Lorg/wikipedia/views/NonEmptyValidator;->lastIsValidValue:Z

    if-eq v5, v0, :cond_3

    .line 52
    iput-boolean v5, p0, Lorg/wikipedia/views/NonEmptyValidator;->lastIsValidValue:Z

    .line 53
    iget-object v0, p0, Lorg/wikipedia/views/NonEmptyValidator;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lorg/wikipedia/views/NonEmptyValidator;->actionButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lorg/wikipedia/views/NonEmptyValidator;->lastIsValidValue:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_3
    return-void
.end method
