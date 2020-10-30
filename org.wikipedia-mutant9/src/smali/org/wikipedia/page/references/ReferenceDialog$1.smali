.class Lorg/wikipedia/page/references/ReferenceDialog$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "ReferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/references/ReferenceDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/references/ReferenceDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/references/ReferenceDialog;Landroid/content/Context;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$1;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$1;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    iget-object v0, v0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$1;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    iget-object v0, v0, Lorg/wikipedia/page/references/ReferenceDialog;->referencesViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :goto_0
    return-void
.end method
