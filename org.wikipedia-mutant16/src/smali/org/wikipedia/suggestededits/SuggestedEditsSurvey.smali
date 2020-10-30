.class public final Lorg/wikipedia/suggestededits/SuggestedEditsSurvey;
.super Ljava/lang/Object;
.source "SuggestedEditsSurvey.java"


# static fields
.field private static final VALID_SUGGESTED_EDITS_COUNT_FOR_SURVEY:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$maybeRunSurvey$0(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsSurvey;->openSurveyInBrowser()V

    return-void
.end method

.method public static maybeRunSurvey(Landroid/app/Activity;)V
    .locals 5

    .line 23
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowSuggestedEditsSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100412

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/wikipedia/util/FeedbackUtil;->LENGTH_MEDIUM:I

    invoke-static {p0, v0, v1}, Lorg/wikipedia/util/FeedbackUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09039a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800fe

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const v1, 0x7f100411

    .line 28
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/wikipedia/suggestededits/-$$Lambda$SuggestedEditsSurvey$kXVyES9cqm-kmOizzIdGP-DW8Zw;->INSTANCE:Lorg/wikipedia/suggestededits/-$$Lambda$SuggestedEditsSurvey$kXVyES9cqm-kmOizzIdGP-DW8Zw;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 30
    invoke-static {v3}, Lorg/wikipedia/settings/Prefs;->setShouldShowSuggestedEditsSurvey(Z)V

    :cond_0
    return-void
.end method

.method public static onEditSuccess()V
    .locals 3

    .line 35
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsCountForSurvey()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsCountForSurvey(I)V

    .line 36
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsCountForSurvey()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSuggestedEditsCountForSurvey()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->wasSuggestedEditsSurveyClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setShouldShowSuggestedEditsSurvey(Z)V

    :cond_1
    return-void
.end method

.method private static openSurveyInBrowser()V
    .locals 3

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsSurveyClicked(Z)V

    .line 43
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    .line 44
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    const v2, 0x7f100413

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
