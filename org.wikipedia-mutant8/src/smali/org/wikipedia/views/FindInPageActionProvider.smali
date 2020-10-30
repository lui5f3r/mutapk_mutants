.class public Lorg/wikipedia/views/FindInPageActionProvider;
.super Landroid/view/ActionProvider;
.source "FindInPageActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private enableLastOccurrenceSearchFlag:Z

.field findInPageMatch:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field findInPageNext:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field findInPagePrev:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isFirstOccurrence:Z

.field private isLastOccurrence:Z

.field private lastOccurrenceSearchFlag:Z

.field private listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

.field private final searchQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lorg/wikipedia/views/FindInPageActionProvider$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/FindInPageActionProvider$1;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;)V

    iput-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 48
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/FindInPageActionProvider;)Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    return-object p0
.end method


# virtual methods
.method onCloseClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 152
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onCloseClicked()V

    return-void
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 6

    .line 58
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v1, 0x7f0c006c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 61
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v4, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v5, 0x7f10019a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 63
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v5, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchQueryListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 64
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 65
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 66
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 67
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 69
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const v4, 0x7f09037a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    iget-object v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const v4, 0x7f090369

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageNext:Landroid/view/View;

    invoke-static {v1}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPagePrev:Landroid/view/View;

    invoke-static {v1}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    return-object v0
.end method

.method onFindInPageNextClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 117
    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    .line 118
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindNextClicked()V

    return-void
.end method

.method onFindInPageNextLongClicked(Landroid/view/View;)Z
    .locals 3
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 123
    iget-boolean v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isLastOccurrence:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v0, 0x7f100136

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindNextLongClicked()V

    .line 128
    iput-boolean v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->lastOccurrenceSearchFlag:Z

    :goto_0
    return v1
.end method

.method onFindInPagePrevClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 135
    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindPrevClicked()V

    return-void
.end method

.method onFindInPagePrevLongClicked(Landroid/view/View;)Z
    .locals 2
    .annotation runtime Lbutterknife/OnLongClick;
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isFirstOccurrence:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v0, 0x7f100134

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/view/View;)V

    .line 145
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindPrevLongClicked()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableLastOccurrenceSearchFlag(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->enableLastOccurrenceSearchFlag:Z

    return-void
.end method

.method public setFindInPageChevronsEnabled(Z)V
    .locals 4

    .line 174
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPagePrev:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageNext:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPagePrev:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setListener(Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    return-void
.end method

.method public setMatchesResults(II)V
    .locals 8

    const/4 v0, 0x0

    if-lez p2, :cond_2

    .line 94
    iget-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v3, 0x7f100135

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v3, 0x7f04027b

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-virtual {p0, v7}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 98
    :goto_0
    iput-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isFirstOccurrence:Z

    if-ne v5, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 99
    :goto_1
    iput-boolean v7, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isLastOccurrence:Z

    goto :goto_2

    .line 101
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    const-string p2, "0/0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    iget-object p2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    const v1, 0x7f0400cb

    invoke-static {p2, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 104
    iput-boolean v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isFirstOccurrence:Z

    .line 105
    iput-boolean v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isLastOccurrence:Z

    .line 107
    :goto_2
    iget-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->enableLastOccurrenceSearchFlag:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->lastOccurrenceSearchFlag:Z

    if-eqz p1, :cond_3

    .line 109
    iput-boolean v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->lastOccurrenceSearchFlag:Z

    .line 110
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindPrevClicked()V

    .line 112
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setSearchViewQuery(Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
