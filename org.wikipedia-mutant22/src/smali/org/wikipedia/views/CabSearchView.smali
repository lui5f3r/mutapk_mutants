.class public Lorg/wikipedia/views/CabSearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "CabSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/CabSearchView$PlainTextInputFilter;
    }
.end annotation


# static fields
.field private static final SEARCH_TEXT_SIZE:I = 0x10


# instance fields
.field private searchCloseBtn:Landroid/widget/ImageView;

.field private searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/views/CabSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040310

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/views/CabSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0403f3

    invoke-static {p1, p2}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    const p2, 0x7f09037f

    .line 42
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0402e9

    invoke-static {p3, v0}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 44
    iget-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p2, p3, v0}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    .line 45
    iget-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    const p2, 0x7f090378

    .line 46
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const p2, 0x7f090369

    .line 48
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    const/16 p3, 0x8

    .line 49
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    .line 51
    iget-object p2, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Lorg/wikipedia/util/FeedbackUtil;->setButtonLongPressToast([Landroid/view/View;)V

    .line 52
    iget-object p1, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    new-instance p2, Lorg/wikipedia/views/CabSearchView$PlainTextInputFilter;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/wikipedia/views/CabSearchView$PlainTextInputFilter;-><init>(Lorg/wikipedia/views/CabSearchView$1;)V

    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/CabSearchView;->addFilter(Landroid/widget/TextView;Landroid/text/InputFilter;)V

    return-void
.end method

.method private addFilter(Landroid/widget/TextView;Landroid/text/InputFilter;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 57
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    .line 58
    array-length v0, v0

    aput-object p2, v1, v0

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public selectAllQueryTexts()V
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->selectAll()V

    return-void
.end method

.method public setCloseButtonVisibility(Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lorg/wikipedia/views/CabSearchView;->searchCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800aa

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSearchHintTextColor(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/views/CabSearchView;->searchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    return-void
.end method
