.class public Lorg/wikipedia/views/LanguageScrollView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "LanguageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/LanguageScrollView$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

.field horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private languageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lorg/wikipedia/views/LanguageScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1}, Lorg/wikipedia/views/LanguageScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1}, Lorg/wikipedia/views/LanguageScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/LanguageScrollView;ZLcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(ZLcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method private createLanguageTab(Ljava/lang/String;)Landroid/view/View;
    .locals 9

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    .line 133
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, v0, p1, v1}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c0109

    .line 58
    invoke-static {p1, v0, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 60
    iget-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lorg/wikipedia/views/LanguageScrollView$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/LanguageScrollView$1;-><init>(Lorg/wikipedia/views/LanguageScrollView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private updateTabLanguageCode(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 2

    const v0, 0x7f0901e4

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    const/16 v1, 0xc

    .line 152
    invoke-static {p1, p2, v0, v1}, Lorg/wikipedia/views/ViewUtil;->formatLangButton(Landroid/widget/TextView;Ljava/lang/String;II)V

    :cond_0
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p4, :cond_2

    .line 158
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method

.method private updateTabLanguageLabel(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const v0, 0x7f0901e5

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 141
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 144
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private updateTabView(ZLcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 8

    .line 79
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0400c5

    invoke-static {p1, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402c0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08013c

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v2, 0x0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v6, v7, p1}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

    if-eqz p1, :cond_2

    .line 89
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->languageCodes:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/wikipedia/views/LanguageScrollView$Callback;->onLanguageTabSelected(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f04027b

    invoke-static {p1, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v6, v7, p2}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f08013d

    invoke-static {p2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode(Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSelectedPosition()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$setUpLanguageScrollTabData$0$LanguageScrollView(I)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return-void
.end method

.method onLangButtonClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lorg/wikipedia/views/LanguageScrollView$Callback;->onLanguageButtonClicked()V

    :cond_0
    return-void
.end method

.method public setUpLanguageScrollTabData(Ljava/util/List;ILorg/wikipedia/views/LanguageScrollView$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lorg/wikipedia/views/LanguageScrollView$Callback;",
            ")V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

    .line 106
    :cond_0
    iput-object p3, p0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/views/LanguageScrollView$Callback;

    .line 107
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->languageCodes:Ljava/util/List;

    .line 109
    iget-object p3, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p3

    if-lez p3, :cond_1

    .line 110
    iget-object p3, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    :cond_1
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 114
    iget-object v1, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/wikipedia/views/LanguageScrollView;->createLanguageTab(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 116
    iget-object v2, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 117
    invoke-direct {p0, p3, v1}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(ZLcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->horizontalLanguageScroll:Lcom/google/android/material/tabs/TabLayout;

    new-instance p3, Lorg/wikipedia/views/-$$Lambda$LanguageScrollView$9eEstJUO0ypXCJ7NjVI7NUqYwps;

    invoke-direct {p3, p0, p2}, Lorg/wikipedia/views/-$$Lambda$LanguageScrollView$9eEstJUO0ypXCJ7NjVI7NUqYwps;-><init>(Lorg/wikipedia/views/LanguageScrollView;I)V

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
