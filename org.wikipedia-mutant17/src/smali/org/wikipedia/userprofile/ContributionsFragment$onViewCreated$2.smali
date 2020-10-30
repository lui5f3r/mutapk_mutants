.class final Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "ContributionsFragment.kt"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$2;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-static {v0}, Lorg/wikipedia/userprofile/ContributionsFragment;->access$resetAndFetch(Lorg/wikipedia/userprofile/ContributionsFragment;)V

    return-void
.end method
