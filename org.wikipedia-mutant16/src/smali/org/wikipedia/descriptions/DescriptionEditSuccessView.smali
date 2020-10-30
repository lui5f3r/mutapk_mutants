.class public Lorg/wikipedia/descriptions/DescriptionEditSuccessView;
.super Landroid/widget/FrameLayout;
.source "DescriptionEditSuccessView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

.field hintTextView:Lorg/wikipedia/views/AppTextViewWithImages;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0100

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->setHintText()V

    return-void
.end method

.method private setHintText()V
    .locals 5

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->hintTextView:Lorg/wikipedia/views/AppTextViewWithImages;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0800f2

    aput v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/views/AppTextViewWithImages;->setTextWithDrawables(Ljava/lang/CharSequence;[I)V

    return-void
.end method


# virtual methods
.method onDismissClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;->onDismissClick()V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->callback:Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;

    return-void
.end method
