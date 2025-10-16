#!/bin/bash
echo "========================================"
echo "HE THONG QUAN LY BENH VIEN - GUI v2.0"
echo "========================================"
echo
echo "Dang compile GUI project..."
javac -cp "lib/mongo-java-driver-3.12.10.jar" -d build/classes src/com/benhvientunhan/gui/panels/*.java src/com/benhvientunhan/gui/dialogs/*.java src/com/benhvientunhan/gui/components/*.java src/com/benhvientunhan/app/SwingApp.java src/com/benhvientunhan/gui/MainFrame.java src/com/benhvientunhan/models/*.java src/com/benhvientunhan/dao/*.java src/com/benhvientunhan/config/*.java src/com/benhvientunhan/utils/*.java

if [ $? -ne 0 ]; then
    echo "Loi compile! Vui long kiem tra code."
    exit 1
fi

echo "Compile thanh cong!"
echo
echo "Dang khoi dong ung dung GUI..."
echo "Luu y: Dam bao MongoDB Server dang chay tren localhost:27017"
echo
echo "========================================"
echo "TINH NANG MOI TRONG PHIEN BAN 2.0:"
echo "========================================"
echo "+ Menu navigation chi kich hoat khi CLICK (khong hover)"
echo "+ Welcome screen voi thiet ke dep mat"
echo "+ Button design cai tien voi hover effects"
echo "+ Quick access buttons tren welcome screen"
echo "+ Feature cards hien thi cac chuc nang chinh"
echo "+ Responsive layout va typography tot hon"
echo "========================================"
echo
java -cp "lib/mongo-java-driver-3.12.10.jar:build/classes" com.benhvientunhan.app.SwingApp
