.class Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;
.super Ljava/lang/Object;
.source "LeadImagesHandler.java"

# interfaces
.implements Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initArticleHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallToActionClicked()V
    .locals 9

    .line 234
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$000(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/Constants$ImageEditType;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$100(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;

    iget-object v2, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v2}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$100(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v3}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$200(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    move-result-object v3

    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->LEAD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v1, v2, v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$000(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/Constants$ImageEditType;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$300(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$400(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$400(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 239
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$100(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$100(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 240
    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$500(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$300(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$400(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    move-object v3, v1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 241
    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$400(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v5

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$300(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    move-result-object v6

    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    invoke-static {v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->access$500(Lorg/wikipedia/page/leadimages/LeadImagesHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    :goto_2
    move-object v7, v1

    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->LEAD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 239
    invoke-static/range {v2 .. v8}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method

.method public onImageClicked()V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$1;->this$0:Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->openImageInGallery(Ljava/lang/String;)V

    return-void
.end method
