.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageActivity$afuBk_eJK49pTF6sT88_AKKWuxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$afuBk_eJK49pTF6sT88_AKKWuxI;->f$0:Lorg/wikipedia/page/PageActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$afuBk_eJK49pTF6sT88_AKKWuxI;->f$0:Lorg/wikipedia/page/PageActivity;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageActivity;->lambda$onCreate$0$PageActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
