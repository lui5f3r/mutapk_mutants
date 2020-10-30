.class final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;
.super Ljava/lang/Object;
.source "SuggestedEditsSnackbars.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;->$activity:Landroid/app/Activity;

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$showFeedLinkSnackbar$1;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SNACKBAR_ACTION:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, p1, v1, v2}, Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
