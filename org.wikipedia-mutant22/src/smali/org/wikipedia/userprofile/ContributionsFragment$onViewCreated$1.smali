.class public final Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ContributionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/userprofile/ContributionsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/userprofile/ContributionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 80
    iget-object p2, p0, Lorg/wikipedia/userprofile/ContributionsFragment$onViewCreated$1;->this$0:Lorg/wikipedia/userprofile/ContributionsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 81
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getElevation()F

    move-result v0

    cmpg-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getElevation()F

    move-result p1

    cmpg-float p1, p1, p3

    if-nez p1, :cond_2

    .line 84
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x7f0701b9

    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->getDimension(I)F

    move-result p2

    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->dpToPx(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
