.class public Lorg/wikipedia/views/PageActionOverflowView;
.super Landroid/widget/FrameLayout;
.source "PageActionOverflowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/PageActionOverflowView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

.field exploreButton:Lcom/google/android/material/textview/MaterialTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field forwardButton:Lcom/google/android/material/textview/MaterialTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private popupWindowHost:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0115

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 46
    new-instance p1, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;

    invoke-direct {p1}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/wikipedia/analytics/ABTestExploreVsHomeFunnel;->shouldSeeHome()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->exploreButton:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f100155

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->exploreButton:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f080099

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method onItemClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/PageActionOverflowView$Callback;->shareClick()V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/PageActionOverflowView$Callback;->newTabClick()V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/PageActionOverflowView$Callback;->forwardClick()V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/PageActionOverflowView$Callback;->findInPageClick()V

    goto :goto_0

    .line 87
    :pswitch_4
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    invoke-interface {p1}, Lorg/wikipedia/views/PageActionOverflowView$Callback;->feedClick()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902c0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroid/view/View;Lorg/wikipedia/views/PageActionOverflowView$Callback;Lorg/wikipedia/page/tabs/Tab;)V
    .locals 3

    .line 54
    iput-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView;->callback:Lorg/wikipedia/views/PageActionOverflowView$Callback;

    .line 55
    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 57
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    invoke-static {p2, v1}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 59
    iget-object p2, p0, Lorg/wikipedia/views/PageActionOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    const v0, 0x800005

    invoke-static {p2, p1, v2, v2, v0}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 61
    iget-object p1, p0, Lorg/wikipedia/views/PageActionOverflowView;->forwardButton:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {p3}, Lorg/wikipedia/page/tabs/Tab;->canGoForward()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
