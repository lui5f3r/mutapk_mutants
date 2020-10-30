.class Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DescriptionEditTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescriptionEditTutorialPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;->this$0:Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;

    .line 33
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 43
    invoke-static {p1}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;->newInstance(I)Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 37
    invoke-static {}, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->size()I

    move-result v0

    return v0
.end method
