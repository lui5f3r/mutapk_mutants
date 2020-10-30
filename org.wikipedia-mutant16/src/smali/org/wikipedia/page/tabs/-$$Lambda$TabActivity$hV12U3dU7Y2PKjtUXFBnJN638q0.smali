.class public final synthetic Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/tabs/TabActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:[Lde/mrapp/android/tabswitcher/Tab;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;Ljava/util/List;[Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    iput-object p2, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$2:[Lde/mrapp/android/tabswitcher/Tab;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$0:Lorg/wikipedia/page/tabs/TabActivity;

    iget-object v1, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/wikipedia/page/tabs/-$$Lambda$TabActivity$hV12U3dU7Y2PKjtUXFBnJN638q0;->f$2:[Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/page/tabs/TabActivity;->lambda$showUndoAllSnackbar$2$TabActivity(Ljava/util/List;[Lde/mrapp/android/tabswitcher/Tab;Landroid/view/View;)V

    return-void
.end method
