.class final Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;
.super Ljava/lang/Object;
.source "FilePageView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageView;->imageCaptionOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $summaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field final synthetic this$0:Lorg/wikipedia/commons/FilePageView;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->$summaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 128
    iget-object p1, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->$fragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->$summaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    iget-object v4, p0, Lorg/wikipedia/commons/FilePageView$imageCaptionOnClickListener$1;->$summaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 130
    sget-object v6, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
