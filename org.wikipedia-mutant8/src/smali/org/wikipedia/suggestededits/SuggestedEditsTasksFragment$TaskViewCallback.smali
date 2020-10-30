.class final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;
.super Ljava/lang/Object;
.source "SuggestedEditsTasksFragment.kt"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Z)V
    .locals 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    const-string v1, "WikipediaApp.getInstance().language()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 411
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object p2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {p2}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LanguageSettingsInvokeSo\u2026ce.SUGGESTED_EDITS.text()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$showLanguagesActivity(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/lang/String;)V

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getAddDescriptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "requireActivity()"

    if-eqz v0, :cond_2

    .line 415
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    :goto_0
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v2, p2, v1}, Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 416
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getAddImageCaptionsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    :goto_1
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v2, p2, v1}, Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 418
    :cond_4
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    invoke-static {p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->access$getAddImageTagsTask$p(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;)Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 419
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldShowImageTagsOnboarding()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 420
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsOnboardingActivity$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x41

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 422
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$TaskViewCallback;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    sget-object p2, Lorg/wikipedia/suggestededits/SuggestionsActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {p2, v0, v1, v2}, Lorg/wikipedia/suggestededits/SuggestionsActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method
