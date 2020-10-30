.class public Lorg/wikipedia/feed/view/CardHeaderView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CardHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;,
        Lorg/wikipedia/feed/view/CardHeaderView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/feed/view/CardHeaderView$Callback;

.field private card:Lorg/wikipedia/feed/model/Card;

.field imageView:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langCodeBackground:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langCodeView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field subtitleView:Landroid/widget/TextView;
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

    .line 48
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/feed/view/CardHeaderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lorg/wikipedia/feed/view/CardHeaderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0}, Lorg/wikipedia/feed/view/CardHeaderView;->init()V

    return-void
.end method

.method static synthetic access$100(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/view/CardHeaderView$Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->callback:Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/feed/view/CardHeaderView;)Lorg/wikipedia/feed/model/Card;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->card:Lorg/wikipedia/feed/model/Card;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private showOverflowMenu(Landroid/view/View;)V
    .locals 3

    .line 127
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p1, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 128
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f090227

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 130
    iget-object v1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->card:Lorg/wikipedia/feed/model/Card;

    invoke-virtual {v1}, Lorg/wikipedia/feed/model/Card;->type()Lorg/wikipedia/feed/model/CardType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/feed/model/CardType;->contentType()Lorg/wikipedia/feed/FeedContentType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/feed/FeedContentType;->isPerLanguage()Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    new-instance p1, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/wikipedia/feed/view/CardHeaderView$CardHeaderMenuClickListener;-><init>(Lorg/wikipedia/feed/view/CardHeaderView;Lorg/wikipedia/feed/view/CardHeaderView$1;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 132
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method getCard()Lorg/wikipedia/feed/model/Card;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->card:Lorg/wikipedia/feed/model/Card;

    return-object v0
.end method

.method onMenuClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/CardHeaderView;->showOverflowMenu(Landroid/view/View;)V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/view/CardHeaderView$Callback;)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->callback:Lorg/wikipedia/feed/view/CardHeaderView$Callback;

    return-object p0
.end method

.method public setCard(Lorg/wikipedia/feed/model/Card;)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->card:Lorg/wikipedia/feed/model/Card;

    return-object p0
.end method

.method public setImage(I)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setImageCircleColor(I)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 5

    .line 83
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 87
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public setLangCode(Ljava/lang/String;)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 2

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lorg/wikipedia/feed/view/CardHeaderView;->langCodeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(I)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/wikipedia/feed/view/CardHeaderView;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/wikipedia/feed/view/CardHeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
