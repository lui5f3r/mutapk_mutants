.class final Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;
.super Ljava/lang/Object;
.source "FilePageView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageView;->imageTagsOnClickListener(Landroidx/fragment/app/Fragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fragment:Landroidx/fragment/app/Fragment;

.field final synthetic $page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field final synthetic this$0:Lorg/wikipedia/commons/FilePageView;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageView;Landroidx/fragment/app/Fragment;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->$fragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->$page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 138
    iget-object p1, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->$fragment:Landroidx/fragment/app/Fragment;

    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;

    iget-object v1, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/wikipedia/commons/FilePageView$imageTagsOnClickListener$1;->$page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->FILE_PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    invoke-virtual {v0, v1, v2, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
