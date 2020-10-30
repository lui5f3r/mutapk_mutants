.class public final Lorg/wikipedia/navtab/NavTabFragmentPagerAdapter;
.super Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;
.source "NavTabFragmentPagerAdapter.kt"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 8
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    invoke-virtual {v0, p1}, Lorg/wikipedia/navtab/NavTab$Companion;->of(I)Lorg/wikipedia/navtab/NavTab;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/navtab/NavTab;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 12
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    invoke-virtual {v0}, Lorg/wikipedia/navtab/NavTab$Companion;->size()I

    move-result v0

    return v0
.end method
