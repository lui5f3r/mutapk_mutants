.class public Lorg/wikipedia/feed/configure/ConfigureItemView;
.super Landroid/widget/FrameLayout;
.source "ConfigureItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;
    }
.end annotation


# instance fields
.field private adapter:Lorg/wikipedia/feed/configure/LanguageItemAdapter;

.field private callback:Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;

.field private contentType:Lorg/wikipedia/feed/FeedContentType;

.field dragHandleView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langListContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field langRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field onSwitch:Landroidx/appcompat/widget/SwitchCompat;
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

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c007a

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 86
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private showLangSelectDialog()V
    .locals 4

    .line 102
    new-instance v0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {v2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->adapter:Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    invoke-virtual {v2}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->getLangList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->setContentType(Ljava/util/List;Ljava/util/List;)V

    .line 105
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    .line 107
    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->titleId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;

    invoke-direct {v0, p0, v1}, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemView;Ljava/util/List;)V

    const v1, 0x7f10008c

    .line 108
    invoke-virtual {v2, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f10008b

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showLangSelectDialog$0$ConfigureItemView(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 109
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {p2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 110
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-virtual {p2}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->adapter:Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 112
    iget-object p2, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->callback:Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;

    if-eqz p2, :cond_0

    .line 113
    iget-object p3, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-interface {p2, p3}, Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;->onLanguagesChanged(Lorg/wikipedia/feed/FeedContentType;)V

    :cond_0
    const/4 p2, 0x0

    .line 116
    iget-object p3, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->adapter:Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    invoke-virtual {p3}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;->getLangList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x1

    .line 122
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->onSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method onCheckedChanged(Z)V
    .locals 2
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->callback:Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    invoke-interface {v0, v1, p1}, Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;->onCheckedChanged(Lorg/wikipedia/feed/FeedContentType;Z)V

    :cond_0
    return-void
.end method

.method onLangClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemView;->showLangSelectDialog()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->callback:Lorg/wikipedia/feed/configure/ConfigureItemView$Callback;

    return-void
.end method

.method public setContents(Lorg/wikipedia/feed/FeedContentType;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->contentType:Lorg/wikipedia/feed/FeedContentType;

    .line 66
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->titleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->subtitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->onSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 70
    invoke-virtual {p1}, Lorg/wikipedia/feed/FeedContentType;->isPerLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    new-instance v0, Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/feed/configure/LanguageItemAdapter;-><init>(Landroid/content/Context;Lorg/wikipedia/feed/FeedContentType;)V

    iput-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->adapter:Lorg/wikipedia/feed/configure/LanguageItemAdapter;

    .line 73
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->langListContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemView;->dragHandleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
