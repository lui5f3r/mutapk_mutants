.class public final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SuggestedEditsSnackbars.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $abTestFunnel:Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;

.field final synthetic $action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$abTestFunnel:Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;

    iput-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 2

    const-string p2, "transientBottomBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->INSTANCE:Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;

    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$abTestFunnel:Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;

    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-static {p1, p2, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->access$showFeedLinkSnackbar(Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;Landroid/app/Activity;Lorg/wikipedia/analytics/ABTestSuggestedEditsSnackbarFunnel;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
