.class public final synthetic Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/tabs/TabActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/wikipedia/page/tabs/Tab;

.field public final synthetic f$3:Lde/mrapp/android/tabswitcher/Tab;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;ILorg/wikipedia/page/tabs/Tab;Lde/mrapp/android/tabswitcher/Tab;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    iput p2, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$1:I

    iput-object p3, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$2:Lorg/wikipedia/page/tabs/Tab;

    iput-object p4, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$3:Lde/mrapp/android/tabswitcher/Tab;

    iput p5, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget v1, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$1:I

    iget-object v2, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$2:Lorg/wikipedia/page/tabs/Tab;

    iget-object v3, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$3:Lde/mrapp/android/tabswitcher/Tab;

    iget v4, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$PGzx3jwfGki1_FWdtwZE7VLtv0c;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/page/tabs/TabActivity;->lambda$showUndoSnackbar$1$TabActivity(ILorg/wikipedia/page/tabs/Tab;Lde/mrapp/android/tabswitcher/Tab;ILandroid/view/View;)V

    return-void
.end method
