.class public Lorg/wikipedia/feed/view/ListCardItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ListCardItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/view/ListCardItemView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/view/ListCardItemView$Callback;

.field private card:Lorg/wikipedia/feed/model/Card;

.field private entry:Lorg/wikipedia/history/HistoryEntry;

.field imageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c010d

    invoke-static {p1, v0, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 57
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 59
    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v0

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 60
    invoke-static {p0}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040318

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/feed/view/ListCardItemView;)Lorg/wikipedia/history/HistoryEntry;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->entry:Lorg/wikipedia/history/HistoryEntry;

    return-object p0
.end method

.method private setViewsGreyedOut(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 154
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method getCallback()Lorg/wikipedia/feed/view/ListCardItemView$Callback;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->callback:Lorg/wikipedia/feed/view/ListCardItemView$Callback;

    return-object v0
.end method

.method getHistoryEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->entry:Lorg/wikipedia/history/HistoryEntry;

    return-object v0
.end method

.method public synthetic lambda$setHistoryEntry$0$ListCardItemView(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 79
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/ListCardItemView;->setViewsGreyedOut(Z)V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 84
    iget-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->callback:Lorg/wikipedia/feed/view/ListCardItemView$Callback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->entry:Lorg/wikipedia/history/HistoryEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->card:Lorg/wikipedia/feed/model/Card;

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {p1, v1, v0}, Lorg/wikipedia/feed/view/ListCardItemView$Callback;->onSelectPage(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    :cond_0
    return-void
.end method

.method onLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 90
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;

    new-instance v1, Lorg/wikipedia/feed/view/ListCardItemView$1;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/view/ListCardItemView$1;-><init>(Lorg/wikipedia/feed/view/ListCardItemView;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;-><init>(Landroid/view/View;ZLorg/wikipedia/readinglist/ReadingListBookmarkMenu$Callback;)V

    iget-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 118
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListBookmarkMenu;->show(Lorg/wikipedia/page/PageTitle;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lorg/wikipedia/feed/view/ListCardItemView$Callback;)Lorg/wikipedia/feed/view/ListCardItemView;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->callback:Lorg/wikipedia/feed/view/ListCardItemView$Callback;

    return-object p0
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/ListCardItemView;
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->card:Lorg/wikipedia/feed/model/Card;

    return-object p0
.end method

.method public setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)Lorg/wikipedia/feed/view/ListCardItemView;
    .locals 2

    .line 75
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 76
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListCardItemView;->setImage(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lorg/wikipedia/page/PageAvailableOfflineHandler;->INSTANCE:Lorg/wikipedia/page/PageAvailableOfflineHandler;

    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    new-instance v1, Lorg/wikipedia/feed/view/-$$Lambda$ListCardItemView$ENNTgfoffEd16nBEG52WvhGceBk;

    invoke-direct {v1, p0}, Lorg/wikipedia/feed/view/-$$Lambda$ListCardItemView$ENNTgfoffEd16nBEG52WvhGceBk;-><init>(Lorg/wikipedia/feed/view/ListCardItemView;)V

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/page/PageAvailableOfflineHandler;->check(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V

    return-object p0
.end method

.method setImage(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->imageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lorg/wikipedia/views/ViewUtil;->loadImageWithRoundedCorners(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->subtitleView:Lorg/wikipedia/views/GoneIfEmptyTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/wikipedia/feed/view/ListCardItemView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
