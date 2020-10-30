.class Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "RandomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/random/RandomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RandomItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/random/RandomFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/random/RandomFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/wikipedia/random/RandomFragment$RandomItemAdapter;->this$0:Lorg/wikipedia/random/RandomFragment;

    .line 226
    invoke-direct {p0, p2}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 237
    invoke-static {}, Lorg/wikipedia/random/RandomItemFragment;->newInstance()Lorg/wikipedia/random/RandomItemFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method
