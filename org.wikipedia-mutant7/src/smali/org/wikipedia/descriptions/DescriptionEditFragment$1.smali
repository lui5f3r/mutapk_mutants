.class Lorg/wikipedia/descriptions/DescriptionEditFragment$1;
.super Ljava/lang/Object;
.source "DescriptionEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/descriptions/DescriptionEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->incrementTotalAnonDescriptionsEdited()V

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/Constants$InvokeSource;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    if-ne v0, v1, :cond_1

    .line 107
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsSurvey;->onEditSuccess()V

    .line 110
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/wikipedia/settings/Prefs;->setLastDescriptionEditTime(J)V

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsReactivationPassStageOne(Z)V

    .line 112
    invoke-static {}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->get()Lorg/wikipedia/analytics/SuggestedEditsFunnel;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/wikipedia/analytics/SuggestedEditsFunnel;->success(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 114
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v1, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 118
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowDescriptionEditSuccessPrompt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/Constants$InvokeSource;

    move-result-object v1

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    if-ne v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v3}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/Constants$InvokeSource;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wikipedia/descriptions/DescriptionEditSuccessActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x36

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->shouldShowDescriptionEditSuccessPrompt(Z)V

    goto :goto_0

    .line 123
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editView:Lorg/wikipedia/descriptions/DescriptionEditView;

    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addedContribution"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$000(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/Constants$InvokeSource;

    move-result-object v1

    const-string v2, "invokeSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-static {v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->access$100(Lorg/wikipedia/descriptions/DescriptionEditFragment;)Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    move-result-object v1

    const-string v2, "intentAction"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
