.class public final Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnboardingPageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OptionsViewHolder"
.end annotation


# instance fields
.field private optionLabelTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->this$0:Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902bc

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.option_label)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->optionLabelTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getOptionLabelTextView()Landroid/widget/TextView;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->optionLabelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setOptionLabelTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingPageView$LanguageListAdapter$OptionsViewHolder;->optionLabelTextView:Landroid/widget/TextView;

    return-void
.end method
