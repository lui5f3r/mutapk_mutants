.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsOnboardingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$onCreate$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$onCreate$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 18
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$onCreate$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
