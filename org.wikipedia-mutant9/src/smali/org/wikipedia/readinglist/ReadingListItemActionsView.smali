.class public Lorg/wikipedia/readinglist/ReadingListItemActionsView;
.super Landroid/widget/LinearLayout;
.source "ReadingListItemActionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

.field moveItemContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field offlineSwitchView:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field removeTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field selectItemContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0118

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method onAddToOtherClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 79
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onAddToOther()V

    :cond_0
    return-void
.end method

.method onMoveToOtherClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 85
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onMoveToOther()V

    :cond_0
    return-void
.end method

.method onOfflineClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 67
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onToggleOffline()V

    :cond_0
    return-void
.end method

.method onRemoveClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 97
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onDelete()V

    :cond_0
    return-void
.end method

.method onSelectClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 91
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onSelect()V

    :cond_0
    return-void
.end method

.method onShareClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 73
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;->onShare()V

    :cond_0
    return-void
.end method

.method public setCallback(Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->offlineSwitchView:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 56
    iget-object p3, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->removeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->selectItemContainer:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->moveItemContainer:Landroid/view/ViewGroup;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
