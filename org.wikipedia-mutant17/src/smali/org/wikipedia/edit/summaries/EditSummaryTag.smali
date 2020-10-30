.class public Lorg/wikipedia/edit/summaries/EditSummaryTag;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EditSummaryTag.java"


# static fields
.field public static final MARGIN:I = 0x4

.field public static final PADDING:I = 0x8


# instance fields
.field private resources:Landroid/content/res/Resources;

.field private selected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    .line 26
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setupEditSummaryTag(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    .line 31
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setupEditSummaryTag(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    .line 36
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->setupEditSummaryTag(Landroid/content/Context;)V

    return-void
.end method

.method private setupEditSummaryTag(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->resources:Landroid/content/res/Resources;

    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 47
    invoke-static {v0}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 48
    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 49
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    new-instance p1, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryTag$1FDXS0MK4eMEC-hp8f8bqzQm5y0;

    invoke-direct {p1, p0}, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryTag$1FDXS0MK4eMEC-hp8f8bqzQm5y0;-><init>(Lorg/wikipedia/edit/summaries/EditSummaryTag;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    if-eqz v0, :cond_0

    const v0, 0x7f04015a

    goto :goto_0

    :cond_0
    const v0, 0x7f04015b

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->resources:Landroid/content/res/Resources;

    iget-boolean v1, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    if-eqz v1, :cond_1

    const v1, 0x106000b

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400c5

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    return v0
.end method

.method public synthetic lambda$setupEditSummaryTag$0$EditSummaryTag(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-boolean p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    .line 56
    invoke-direct {p0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->updateState()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryTag;->selected:Z

    .line 74
    invoke-direct {p0}, Lorg/wikipedia/edit/summaries/EditSummaryTag;->updateState()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
