.class final Lorg/wikipedia/userprofile/ContributionDetailsFragment$setUpContributionDetails$1;
.super Ljava/lang/Object;
.source "ContributionDetailsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionDetailsFragment;->setUpContributionDetails()V
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

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment$setUpContributionDetails$1;->this$0:Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lorg/wikipedia/userprofile/ContributionDetailsFragment$setUpContributionDetails$1;->this$0:Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    invoke-static {p1}, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->access$startTypeSpecificActivity(Lorg/wikipedia/userprofile/ContributionDetailsFragment;)V

    return-void
.end method
