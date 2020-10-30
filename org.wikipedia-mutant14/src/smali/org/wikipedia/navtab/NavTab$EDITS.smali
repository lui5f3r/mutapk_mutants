.class final Lorg/wikipedia/navtab/NavTab$EDITS;
.super Lorg/wikipedia/navtab/NavTab;
.source "NavTab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/navtab/NavTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EDITS"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    const v3, 0x7f1001d8

    const v5, 0x7f0800f1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/navtab/NavTab;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 34
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;

    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$Companion;->newInstance()Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    move-result-object v0

    return-object v0
.end method
