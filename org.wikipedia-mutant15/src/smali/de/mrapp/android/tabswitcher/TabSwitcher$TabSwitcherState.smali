.class Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;
.super Lde/mrapp/android/util/view/AbstractSavedState;
.source "TabSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/TabSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSwitcherState"
.end annotation


# instance fields
.field private layoutPolicy:Lde/mrapp/android/tabswitcher/LayoutPolicy;

.field private modelState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$1100(Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;)Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 0

    .line 109
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->layoutPolicy:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    return-object p0
.end method

.method static synthetic access$1102(Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;Lde/mrapp/android/tabswitcher/LayoutPolicy;)Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 0

    .line 109
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->layoutPolicy:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    return-object p1
.end method

.method static synthetic access$1200(Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;)Landroid/os/Bundle;
    .locals 0

    .line 109
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->modelState:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1202(Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 109
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->modelState:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lde/mrapp/android/util/view/AbstractSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->layoutPolicy:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 166
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/TabSwitcher$TabSwitcherState;->modelState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
