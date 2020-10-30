.class public final Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnboardingPageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/OnboardingPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LanguageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/onboarding/OnboardingPageView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/onboarding/OnboardingPageView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 113
    check-cast p1, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->onBindViewHolder(Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->getOptionLabelTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    sget v2, Lorg/wikipedia/R$id;->primaryTextView:I

    invoke-virtual {v1, v2}, Lorg/wikipedia/onboarding/OnboardingPageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/views/AppTextView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 120
    invoke-virtual {p1}, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->getOptionLabelTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10020e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance p2, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026_recycler, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;-><init>(Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;Landroid/view/View;)V

    return-object p2
.end method
