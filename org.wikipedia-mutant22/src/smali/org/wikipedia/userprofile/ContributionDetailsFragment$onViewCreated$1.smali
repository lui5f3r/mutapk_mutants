.class final Lorg/wikipedia/userprofile/ContributionDetailsFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ContributionDetailsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionDetailsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
